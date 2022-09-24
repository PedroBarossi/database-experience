-- Mostrar clientes que têm o mesmo sobrenome
select concat(first_name,' ',last_name) as full_name from costumer where last_name like
	(select last_name from costumer group by last_name having count(last_name)>1);
-- - Exibir serviços por ordem do maior gasto com mão-de-obra para o menor (especificar a placa do carro)
select ve.license as Placa, wo.id_wo as Ordem, wo_status as Status_OS, round(sum(ser.cost),2) as Total_servico from work_order as wo 
	inner join service_in_work_order as swo on wo.id_wo = swo.code_wo
    inner join service as ser on swo.code_service = ser.id_service
    inner join assessment as ass on wo.from_assessment = ass.id_assess
    inner join vehicle as ve on ass.ass_vehicle = ve.id_vehicle
    group by wo.id_wo
    order by Total_servico desc;